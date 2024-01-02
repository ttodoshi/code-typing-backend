create table public.regular_texts
(
    uuid    text not null
        primary key,
    content text not null
);

alter table public.regular_texts
    owner to postgres;

create table public.programming_languages
(
    uuid text not null
        primary key,
    name text not null
);

alter table public.programming_languages
    owner to postgres;

create table public.code_examples
(
    uuid                      text not null
        primary key,
    content                   text not null,
    programming_language_uuid text not null
        constraint fk_code_examples_programming_language
            references public.programming_languages
);

alter table public.code_examples
    owner to postgres;

create index idx_code_examples_programming_language_uuid
    on public.code_examples (programming_language_uuid);

insert into public.regular_texts(uuid, content)
values (gen_random_uuid(),
        'Кстати, акционеры крупнейших компаний будут объективно рассмотрены соответствующими инстанциями! А также независимые государства объявлены нарушающими общечеловеческие нормы этики и морали. Идейные соображения высшего порядка, а также внедрение современных методик создаёт предпосылки для как самодостаточных, так и внешне зависимых концептуальных решений.'),
       (gen_random_uuid(),
        'Внезапно, сторонники тоталитаризма в науке и по сей день остаются уделом либералов, которые жаждут быть описаны максимально подробно. Лишь представители современных социальных резервов объективно рассмотрены соответствующими инстанциями. И нет сомнений, что тщательные исследования конкурентов и по сей день остаются уделом либералов, которые жаждут быть функционально разнесены на независимые элементы.'),
       (gen_random_uuid(),
        'Банальные, но неопровержимые выводы, а также стремящиеся вытеснить традиционное производство, нанотехнологии призывают нас к новым свершениям, которые, в свою очередь, должны быть в равной степени предоставлены сами себе. Безусловно, укрепление и развитие внутренней структуры создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса существующих финансовых и административных условий. Ясность нашей позиции очевидна: разбавленное изрядной долей эмпатии, рациональное мышление однозначно определяет каждого участника как способного принимать собственные решения касаемо экспериментов, поражающих по своей масштабности и грандиозности.'),
       (gen_random_uuid(),
        'Повседневная практика показывает, что граница обучения кадров представляет собой интересный эксперимент проверки инновационных методов управления процессами. Предварительные выводы неутешительны: существующая теория играет определяющее значение для новых принципов формирования материально-технической и кадровой базы! Разнообразный и богатый опыт говорит нам, что дальнейшее развитие различных форм деятельности, а также свежий взгляд на привычные вещи — безусловно открывает новые горизонты для своевременного выполнения сверхзадачи.'),
       (gen_random_uuid(),
        'Также как новая модель организационной деятельности создаёт предпосылки для экспериментов, поражающих по своей масштабности и грандиозности. Таким образом, понимание сути ресурсосберегающих технологий способствует повышению качества системы массового участия. Значимость этих проблем настолько очевидна, что высокотехнологичная концепция общественного уклада, а также свежий взгляд на привычные вещи — безусловно открывает новые горизонты для благоприятных перспектив.');
insert into public.programming_languages(uuid, name)
values (gen_random_uuid(), 'Python'),
       (gen_random_uuid(), 'Java'),
       (gen_random_uuid(), 'Golang'),
       (gen_random_uuid(), 'TypeScript'),
       (gen_random_uuid(), 'HTML'),
       (gen_random_uuid(), 'Kotlin'),
       (gen_random_uuid(), 'SQL');

insert into public.code_examples(uuid, content, programming_language_uuid)
values (gen_random_uuid(), 'def check():
    global x_btn_img, o_btn_img
    x_btns = []
    o_btns = []
    for button in buttons.items():
        button_number = button[0][0]+1+button[0][1]+button[0][0]*2
        if button[1][''image''] == x_btn_img._PhotoImage__photo.name:
            x_btns.append(button_number)
        elif button[1][''image''] == o_btn_img._PhotoImage__photo.name:
            o_btns.append(button_number)
    for win in WINS:
        if isSublist(win, x_btns):
            result = messagebox.askyesno(title=''Игра окончена'',
                                         message=''Победили крестики!\nХотите сыграть еще раз?'')
            if result == 1:
                clear(result)
            elif result == 0:
                root.quit()
        elif isSublist(win, o_btns):
            result = messagebox.askyesno(title=''Игра окончена'',
                        message=''Победили нолики!\nХотите сыграть еще раз?'')
            if result == 1:
                clear(result)
            elif result == 0:
                root.quit()', (select uuid
                               from public.programming_languages
                               where name = 'Python')),
       (gen_random_uuid(), '@Transactional
    public GalaxyDto updateGalaxy(Long galaxyId, UpdateGalaxyDto galaxy) {
        Galaxy updatedGalaxy = galaxyRepository
                .findById(galaxyId)
                .orElseThrow(() -> new GalaxyNotFoundException(galaxyId));

        galaxyValidatorService.validatePutRequest(galaxyId, galaxy);

        updatedGalaxy.setGalaxyName(galaxy.getGalaxyName());
        updatedGalaxy.setGalaxyDescription(galaxy.getGalaxyDescription());

        return mapper.map(
                galaxyRepository.save(updatedGalaxy),
                GalaxyDto.class
        );
    }

    @Transactional
    public MessageDto deleteGalaxy(Long galaxyId) {
        galaxyRepository.deleteById(galaxyId);
        return new MessageDto("Галактика " + galaxyId + " была уничтожена квазаром");
    }', (select uuid
         from public.programming_languages
         where name = 'Java')),
       (gen_random_uuid(), 'func (s *PostService) GetPostByUUID(uuid string) (getPostDto dto.GetPostDto, err error) {
	post, err := s.repo.GetPostByUUID(uuid)
	if err != nil {
		s.log.Infof(`error getting post by uuid: ''%s'' due to error: %v`, uuid, err)
		return getPostDto, err
	}

	err = copier.Copy(&getPostDto, &post)
	if err != nil {
		return getPostDto, &errors.MappingError{Message: `struct mapping error`}
	}
	return getPostDto, nil
}

func (s *PostService) GetPosts() (postsDto []dto.GetPostDto, err error) {
	posts := s.repo.GetPosts()
	err = copier.Copy(&postsDto, &posts)
	if err != nil {
		return postsDto, &errors.MappingError{Message: `struct mapping error`}
	}
	return postsDto, nil
}', (select uuid
     from public.programming_languages
     where name = 'Golang')),
       (gen_random_uuid(), 'return (
        <>
            <div className={css.typing} onClick={handleFocus} ref={parentRef}>
                <Text
                    fontSize="xxx-large"
                    display="inline-flex"
                    flexWrap="wrap"
                    justifyContent="left"
                    wordBreak="break-all"
                >
                    <Cursor
                        top={cursorRelativePositionTop}
                        left={cursorRelativePositionLeft}
                    />

                    {currentText?.map((word, wordIndex) => (
                        <Word
                            key={wordIndex}
                            wordIndex={wordIndex}
                            expectedWord={word + " "}
                            printedWord={wordIndex === currentWordIndex ? typingValue : undefined}
                            wordStatus={
                                getWordStatus({
                                    currentWordIndex,
                                    wordIndex
                                })
                            }
                        />
                    ))}
                </Text>

                <TypingField
                    value={typingValue}
                    onChange={handleChangeTypingField}
                    ref={typingFieldRef}
                    top={`${cursorRelativePositionTop}px`}
                />
            </div>
        </>

    )', (select uuid
         from public.programming_languages
         where name = 'TypeScript')),
       (gen_random_uuid(), '<header class="header">
        <div class="wrapper">
            <div class="header_wrapper">
                <a href="/" class="header_logo-link">
                    <img src="/img/svg/Vector.svg" alt="Площадка для реализации криптостикеров" class="header_logo-link">
                </a>
                <ul class="header_list">
                    <li class="header_item">
                        <a href="#!" class="header_link">Авторы</a>
                    </li>
                    <li class="header_item">
                        <a href="#!" class="header_link">Коллекции</a>
                    </li>
                    <li class="header_item">
                        <a href="#!" class="header_link">Сервисы</a>
                    </li>
                </ul>
                <div class="header_button">
                    <button type="button" class="popup-button">Кошелёк</button>
                </div>
            </div>
        </div>
    </header>', (select uuid
                 from public.programming_languages
                 where name = 'HTML')),
       (gen_random_uuid(), 'companion object {
        private val COMPARATOR = object : DiffUtil.ItemCallback<Favorites.Favorite>() {
            override fun areItemsTheSame(
                oldItem: Favorites.Favorite,
                newItem: Favorites.Favorite
            ): Boolean =
                oldItem.id == newItem.id

            override fun areContentsTheSame(
                oldItem: Favorites.Favorite,
                newItem: Favorites.Favorite
            ): Boolean =
                oldItem == newItem
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FavoriteViewHolder {
        val binding =
            FavoriteItemBinding.inflate(LayoutInflater.from(parent.context), parent, false).apply {
                this.lifecycleOwner = fragmentLifecycleOwner
            }
        return FavoriteViewHolder(binding)
    }', (select uuid
         from public.programming_languages
         where name = 'Kotlin')),
       (gen_random_uuid(), 'WITH RECURSIVE r AS (
   SELECT dependency_id,child_id, parent_id, is_alternative
   FROM system_dependency
   WHERE parent_id = ?1

   UNION

   SELECT system_dependency.dependency_id, system_dependency.child_id, system_dependency.parent_id, system_dependency.is_alternative
   FROM system_dependency
      JOIN r
          ON system_dependency.child_id = r.parent_id
)

SELECT * FROM r
WHERE parent_id = ?1', (select uuid
                        from public.programming_languages
                        where name = 'SQL'));
